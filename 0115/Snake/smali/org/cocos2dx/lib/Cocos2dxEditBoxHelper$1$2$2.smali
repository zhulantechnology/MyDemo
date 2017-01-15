.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;

.field private final synthetic val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;ILorg/cocos2dx/lib/Cocos2dxEditBox;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$2;->this$2:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$2;->val$index:I

    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$2;->val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$2;->val$index:I

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$2;->val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->__editBoxEditingDidEnd(ILjava/lang/String;)V

    return-void
.end method
