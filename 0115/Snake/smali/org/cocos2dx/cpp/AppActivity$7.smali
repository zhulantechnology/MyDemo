.class Lorg/cocos2dx/cpp/AppActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$7;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$7;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/cpp/AppActivity;->finish()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
