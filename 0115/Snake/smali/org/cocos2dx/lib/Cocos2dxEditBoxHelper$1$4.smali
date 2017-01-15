.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;I)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;->val$index:I

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->closeKeyboard(I)V

    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
