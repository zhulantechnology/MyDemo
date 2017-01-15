.class final Lcom/chukong/cocosplay/client/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chukong/cocosplay/client/g;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/chukong/cocosplay/client/d;->b(Z)V

    iget-object v0, p0, Lcom/chukong/cocosplay/client/g;->a:Ljava/lang/String;

    sget-object v1, Lcom/chukong/cocosplay/client/d;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chukong/cocosplay/client/d;->a(Ljava/lang/String;Ljava/lang/String;)J

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/chukong/cocosplay/client/d;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/chukong/cocosplay/client/d;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chukong/cocosplay/client/d;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chukong/cocosplay/client/d;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {v2}, Lcom/chukong/cocosplay/client/d;->b(Z)V

    goto :goto_0
.end method
