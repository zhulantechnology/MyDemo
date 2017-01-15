.class Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxVideoView$4;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoView$4;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxVideoView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxVideoView$4;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->access$0(Lorg/cocos2dx/lib/Cocos2dxVideoView$4;)Lorg/cocos2dx/lib/Cocos2dxVideoView;

    move-result-object v0

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$11(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxVideoView$4;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->access$0(Lorg/cocos2dx/lib/Cocos2dxVideoView$4;)Lorg/cocos2dx/lib/Cocos2dxVideoView;

    move-result-object v0

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$11(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxVideoView$4;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;
    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->access$0(Lorg/cocos2dx/lib/Cocos2dxVideoView$4;)Lorg/cocos2dx/lib/Cocos2dxVideoView;

    move-result-object v1

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I
    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$12(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    :cond_0
    return-void
.end method
