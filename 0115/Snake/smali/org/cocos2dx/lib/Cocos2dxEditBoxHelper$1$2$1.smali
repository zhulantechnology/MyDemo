.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;I)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$1;->this$2:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$1;->val$index:I

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->__editBoxEditingDidBegin(I)V

    return-void
.end method
