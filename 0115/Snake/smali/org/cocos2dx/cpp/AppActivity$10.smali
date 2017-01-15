.class Lorg/cocos2dx/cpp/AppActivity$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;

.field private final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$10;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iput-object p2, p0, Lorg/cocos2dx/cpp/AppActivity$10;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$10;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iget-object v1, p0, Lorg/cocos2dx/cpp/AppActivity$10;->val$s:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
