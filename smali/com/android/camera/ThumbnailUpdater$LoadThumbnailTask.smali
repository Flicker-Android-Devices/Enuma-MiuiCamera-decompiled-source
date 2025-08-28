.class public Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;
.super Lcom/xiaomi/camera/common/LifecycleAsyncTask;
.source "ThumbnailUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ThumbnailUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/camera/common/LifecycleAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/Thumbnail;",
        ">;"
    }
.end annotation


# instance fields
.field public final mActivityBaseRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/android/camera/ActivityBase;",
            ">;"
        }
    .end annotation
.end field

.field public mLookAtCache:Z

.field public final mThumbnailRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/android/camera/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field public final mThumbnailUpdaterRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/android/camera/ThumbnailUpdater;",
            ">;"
        }
    .end annotation
.end field

.field public needUpdateViewIfNull:Z

.field public noNeedUpdateThumbnail:Z


# direct methods
.method public constructor <init>(ZLjava/lang/ref/Reference;Lcom/android/camera/ThumbnailUpdater;Lcom/android/camera/Thumbnail;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/ref/Reference<",
            "Lcom/android/camera/ActivityBase;",
            ">;",
            "Lcom/android/camera/ThumbnailUpdater;",
            "Lcom/android/camera/Thumbnail;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;-><init>(ZZLjava/lang/ref/Reference;Lcom/android/camera/ThumbnailUpdater;Lcom/android/camera/Thumbnail;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/ref/Reference;Lcom/android/camera/ThumbnailUpdater;Lcom/android/camera/Thumbnail;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/ref/Reference<",
            "Lcom/android/camera/ActivityBase;",
            ">;",
            "Lcom/android/camera/ThumbnailUpdater;",
            "Lcom/android/camera/Thumbnail;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    .line 4
    iput-boolean p2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->needUpdateViewIfNull:Z

    .line 5
    iput-object p3, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mActivityBaseRef:Ljava/lang/ref/Reference;

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mThumbnailUpdaterRef:Ljava/lang/ref/Reference;

    .line 7
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mThumbnailRef:Ljava/lang/ref/Reference;

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LoadThumbnailTask: thumbnail on task create: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ThumbnailUpdater"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;
    .locals 11

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LoadThumbnailTask: execute task: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". lookAtCache = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThumbnailUpdater"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->isTaskAborted()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mActivityBaseRef:Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    if-nez p1, :cond_1

    const-string p1, "LoadThumbnailTask#doInBackground -> mActivityBaseRef \u5df2\u88ab\u91ca\u653e"

    .line 5
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mActivityBaseRef:Ljava/lang/ref/Reference;

    .line 7
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/android/camera/Thumbnail;->getLastMedia(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v3, v1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v3, v2, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    .line 10
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mThumbnailRef:Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Thumbnail;

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 11
    invoke-virtual {v4}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LoadThumbnailTask: thumbnailUri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentResolver;

    invoke-static {v6, v7}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 14
    invoke-virtual {v6, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v2, :cond_3

    const-wide/16 v0, -0x1

    goto :goto_1

    .line 15
    :cond_3
    iget-wide v0, v2, Lcom/android/camera/Thumbnail$Media;->fileSize:J

    :goto_1
    invoke-virtual {v4, v0, v1}, Lcom/android/camera/Thumbnail;->setFileSize(J)V

    return-object v4

    .line 16
    :cond_4
    iput-boolean v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    .line 17
    :cond_5
    iget-object v4, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mActivityBaseRef:Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ActivityBase;

    .line 18
    invoke-virtual {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->isTaskAborted()Z

    move-result v6

    if-eqz v6, :cond_6

    return-object v1

    :cond_6
    const-string v6, "LoadThumbnailTask#doInBackground -> activityBase\u5df2\u88ab\u91ca\u653e"

    if-nez v4, :cond_7

    .line 19
    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 20
    :cond_7
    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v7

    if-nez v7, :cond_8

    .line 21
    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 22
    :cond_8
    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 23
    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_c

    :cond_9
    if-eqz v3, :cond_b

    .line 24
    iget-boolean v3, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    if-eqz v3, :cond_c

    .line 25
    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentResolver;

    .line 26
    invoke-static {v3, p1}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;

    move-result-object p1

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadThumbnailTask: cached thumbnail = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a

    .line 28
    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v3

    goto :goto_2

    :cond_a
    move-object v3, v1

    goto :goto_2

    .line 29
    :cond_b
    iput-boolean v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->needUpdateViewIfNull:Z

    const-string p1, "LoadThumbnailTask: no image/video was found"

    .line 30
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object p1, v1

    move-object v3, p1

    .line 31
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_d

    return-object v1

    :cond_d
    new-array v4, v5, [Lcom/android/camera/Thumbnail;

    .line 32
    iget-object v7, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mActivityBaseRef:Ljava/lang/ref/Reference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ActivityBase;

    .line 33
    invoke-virtual {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->isTaskAborted()Z

    move-result v8

    if-eqz v8, :cond_e

    return-object v1

    :cond_e
    if-nez v7, :cond_f

    .line 34
    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 35
    :cond_f
    invoke-virtual {v7}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v6

    const-string v8, ", thumbnail = "

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-nez v6, :cond_11

    invoke-virtual {v7}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v6

    if-nez v6, :cond_11

    .line 36
    invoke-static {v7, v4, v3, v2}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromContentResolver(Landroid/content/Context;[Lcom/android/camera/Thumbnail;Landroid/net/Uri;Lcom/android/camera/Thumbnail$Media;)I

    move-result v2

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LoadThumbnailTask: get last thumbnail from provider. code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v10, v2, :cond_10

    move-object v6, p1

    goto :goto_3

    .line 38
    :cond_10
    aget-object v6, v4, v9

    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 40
    :cond_11
    iput-boolean v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->needUpdateViewIfNull:Z

    .line 41
    invoke-virtual {v7}, Lcom/android/camera/ActivityBase;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v2

    .line 42
    invoke-static {v7, v4, v2, v3}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromUriList(Landroid/content/Context;[Lcom/android/camera/Thumbnail;Ljava/util/ArrayList;Landroid/net/Uri;)I

    move-result v2

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LoadThumbnailTask: get last thumbnail from uri list. code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v10, v2, :cond_12

    move-object v6, p1

    goto :goto_4

    .line 44
    :cond_12
    aget-object v6, v4, v9

    :goto_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    if-eq v2, v10, :cond_15

    if-eq v2, v5, :cond_14

    const/4 p1, 0x2

    if-eq v2, p1, :cond_13

    return-object v1

    .line 46
    :cond_13
    iput-boolean v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->noNeedUpdateThumbnail:Z

    return-object v1

    .line 47
    :cond_14
    aget-object p1, v4, v9

    :cond_15
    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/android/camera/Thumbnail;)V
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadThumbnailTask onPostExecute, thumbnail is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", canceled"

    goto :goto_0

    :cond_0
    const-string v1, ", not canceled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", noNeedUpdateThumbnail is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->noNeedUpdateThumbnail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailUpdater"

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mThumbnailUpdaterRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ThumbnailUpdater;

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->noNeedUpdateThumbnail:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadThumbnailTask: thumbnail on task complete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    iget-boolean v3, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->needUpdateViewIfNull:Z

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/Thumbnail;

    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->onPostExecute(Lcom/android/camera/Thumbnail;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string p1, "ThumbnailUpdater"

    const-string v0, "LoadThumbnailTask#onStop -> activityBase invoked onStop(), now cancel task."

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->cancel(Z)V

    return-void
.end method
