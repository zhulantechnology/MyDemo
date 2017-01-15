.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;I)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;->val$index:I

    invoke-direct {v1, p0, v2, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
