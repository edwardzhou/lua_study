#ifndef CCEDITBOXBRIDGE_H_
#define CCEDITBOXBRIDGE_H_

#include "cocos2d.h"
#include "cocos-ext.h"

typedef cocos2d::CCNode CCNode;

class DelegateBridge : public cocos2d::extension::CCEditBoxDelegate {
public:
	DelegateBridge(){};
	virtual ~DelegateBridge(){};

	virtual void editBoxEditingDidBegin(cocos2d::extension::CCEditBox* editBox);
	virtual void editBoxEditingDidEnd(cocos2d::extension::CCEditBox* editBox);
	virtual void editBoxTextChanged(cocos2d::extension::CCEditBox* editBox, const std::string& text);
	virtual void editBoxReturn(cocos2d::extension::CCEditBox* editBox);
};

class CCEditBoxBridge : public cocos2d::CCObject{

public:
	CCEditBoxBridge():mEditBox(NULL), delegate(NULL){}
	virtual ~CCEditBoxBridge(){};

	static CCEditBoxBridge* create(const char* plist_name, const char* normal9scale, int width, int height);

	void addTo(CCNode* node, int x, int y);

	void setHint(const char* hint);

	void setHintSize(int fontSize);

	void setText(const char* text);

	const char* getText();

	void setTextSize(int fontSize);

	void setTextColor(int r, int g, int b);

	void setInputFlag(int flag);

	void setMaxLength(int max);

private:
	cocos2d::extension::CCEditBox* mEditBox;
	DelegateBridge* delegate;
};




#endif
