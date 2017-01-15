.class Lorg/cocos2dx/lib/Cocos2dxDownloader$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

.field private final synthetic val$id:I

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$path:Ljava/lang/String;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$id:I

    iput-object p4, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v4, 0x0

    new-instance v6, Lorg/cocos2dx/lib/DownloadTask;

    invoke-direct {v6}, Lorg/cocos2dx/lib/DownloadTask;-><init>()V

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/cocos2dx/lib/DataTaskHandler;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$id:I

    invoke-direct {v0, v1, v2}, Lorg/cocos2dx/lib/DataTaskHandler;-><init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;I)V

    iput-object v0, v6, Lorg/cocos2dx/lib/DownloadTask;->handler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxDownloader;->_httpClient:Lcom/loopj/android/http/AsyncHttpClient;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$1(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$url:Ljava/lang/String;

    iget-object v3, v6, Lorg/cocos2dx/lib/DownloadTask;->handler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    iput-object v0, v6, Lorg/cocos2dx/lib/DownloadTask;->handle:Lcom/loopj/android/http/RequestHandle;

    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$path:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxDownloader;->_tempFileNameSufix:Ljava/lang/String;
    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$2(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/cocos2dx/lib/FileTaskHandler;

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v5, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$id:I

    invoke-direct {v2, v3, v5, v0, v1}, Lorg/cocos2dx/lib/FileTaskHandler;-><init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/io/File;Ljava/io/File;)V

    iput-object v2, v6, Lorg/cocos2dx/lib/DownloadTask;->handler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v5, "Range"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bytes="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v5, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/http/Header;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/Header;

    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxDownloader;->_httpClient:Lcom/loopj/android/http/AsyncHttpClient;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$1(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$url:Ljava/lang/String;

    iget-object v5, v6, Lorg/cocos2dx/lib/DownloadTask;->handler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    iput-object v0, v6, Lorg/cocos2dx/lib/DownloadTask;->handle:Lcom/loopj/android/http/RequestHandle;

    :cond_2
    iget-object v0, v6, Lorg/cocos2dx/lib/DownloadTask;->handle:Lcom/loopj/android/http/RequestHandle;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t create DownloadTask for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$id:I

    invoke-direct {v1, p0, v2, v3, v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxDownloader$3;Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/lang/String;)V

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxDownloader;->_taskMap:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$3(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move-object v0, v4

    check-cast v0, [Lorg/apache/http/Header;

    move-object v3, v0

    goto :goto_0
.end method
