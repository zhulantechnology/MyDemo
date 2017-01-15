.class Lorg/cocos2dx/cpp/AppActivity$14;
.super Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;

.field private final synthetic val$feeId:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;I)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$14;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iput p2, p0, Lorg/cocos2dx/cpp/AppActivity$14;->val$feeId:I

    invoke-direct {p0}, Lcom/snowfish/cn/ganga/offline/helper/SFIPayResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$14;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    const/4 v1, 0x0

    iget v2, p0, Lorg/cocos2dx/cpp/AppActivity$14;->val$feeId:I

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->handleAllResu(ZI)V
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/cpp/AppActivity;->access$6(Lorg/cocos2dx/cpp/AppActivity;ZI)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$14;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    const/4 v1, 0x1

    iget v2, p0, Lorg/cocos2dx/cpp/AppActivity$14;->val$feeId:I

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->handleAllResu(ZI)V
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/cpp/AppActivity;->access$6(Lorg/cocos2dx/cpp/AppActivity;ZI)V

    return-void
.end method
