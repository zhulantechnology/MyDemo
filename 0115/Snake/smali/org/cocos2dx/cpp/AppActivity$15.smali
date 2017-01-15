.class Lorg/cocos2dx/cpp/AppActivity$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;

.field private final synthetic val$feeId:I

.field private final synthetic val$isSuc:Z


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;ZI)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$15;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iput-boolean p2, p0, Lorg/cocos2dx/cpp/AppActivity$15;->val$isSuc:Z

    iput p3, p0, Lorg/cocos2dx/cpp/AppActivity$15;->val$feeId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lorg/cocos2dx/cpp/AppActivity$15;->val$isSuc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$15;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    # getter for: Lorg/cocos2dx/cpp/AppActivity;->dealed:Z
    invoke-static {v0}, Lorg/cocos2dx/cpp/AppActivity;->access$11(Lorg/cocos2dx/cpp/AppActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$15;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    invoke-static {v0, v4}, Lorg/cocos2dx/cpp/AppActivity;->access$12(Lorg/cocos2dx/cpp/AppActivity;Z)V

    # getter for: Lorg/cocos2dx/cpp/AppActivity;->daojvid:I
    invoke-static {}, Lorg/cocos2dx/cpp/AppActivity;->access$1()I

    move-result v0

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->paySuccess(I)V
    invoke-static {v0}, Lorg/cocos2dx/cpp/AppActivity;->access$13(I)V

    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$15;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    const-string v1, "\u83b7\u53d6\u6210\u529f"

    invoke-virtual {v0, v1}, Lorg/cocos2dx/cpp/AppActivity;->toastHint(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$15;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iget v1, p0, Lorg/cocos2dx/cpp/AppActivity$15;->val$feeId:I

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->getPM(I)I
    invoke-static {v0, v1}, Lorg/cocos2dx/cpp/AppActivity;->access$2(Lorg/cocos2dx/cpp/AppActivity;I)I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lorg/cocos2dx/cpp/AppActivity$15;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iget v3, p0, Lorg/cocos2dx/cpp/AppActivity$15;->val$feeId:I

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->getPM(I)I
    invoke-static {v2, v3}, Lorg/cocos2dx/cpp/AppActivity;->access$2(Lorg/cocos2dx/cpp/AppActivity;I)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/b/a/a/a;->a(DD)V

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$15;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iget-object v1, p0, Lorg/cocos2dx/cpp/AppActivity$15;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iget v2, p0, Lorg/cocos2dx/cpp/AppActivity$15;->val$feeId:I

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->getPM(I)I
    invoke-static {v1, v2}, Lorg/cocos2dx/cpp/AppActivity;->access$2(Lorg/cocos2dx/cpp/AppActivity;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/cocos2dx/cpp/AppActivity$15;->val$feeId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->traceChongzhi(IILjava/lang/String;)V
    invoke-static {v0, v1, v4, v2}, Lorg/cocos2dx/cpp/AppActivity;->access$3(Lorg/cocos2dx/cpp/AppActivity;IILjava/lang/String;)V

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$15;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iget-object v0, v0, Lorg/cocos2dx/cpp/AppActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "m_jf_count"

    invoke-static {v0, v1}, Lcom/chukong/cocosplay/client/h;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/cocos2dx/cpp/AppActivity$15;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iget-object v1, v1, Lorg/cocos2dx/cpp/AppActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "m_jf_count"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/chukong/cocosplay/client/h;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/cocos2dx/cpp/AppActivity;->access$14()V

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$15;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    const-string v1, "\u83b7\u53d6\u5931\u8d25"

    invoke-virtual {v0, v1}, Lorg/cocos2dx/cpp/AppActivity;->toastHint(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$15;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iget-object v1, p0, Lorg/cocos2dx/cpp/AppActivity$15;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iget v2, p0, Lorg/cocos2dx/cpp/AppActivity$15;->val$feeId:I

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->getPM(I)I
    invoke-static {v1, v2}, Lorg/cocos2dx/cpp/AppActivity;->access$2(Lorg/cocos2dx/cpp/AppActivity;I)I

    move-result v1

    const/4 v2, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lorg/cocos2dx/cpp/AppActivity$15;->val$feeId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->traceChongzhi(IILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lorg/cocos2dx/cpp/AppActivity;->access$3(Lorg/cocos2dx/cpp/AppActivity;IILjava/lang/String;)V

    goto :goto_0
.end method
