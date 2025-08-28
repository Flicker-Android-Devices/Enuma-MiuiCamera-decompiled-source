.class public Lcom/android/camera/ThumbnailUpdater;
.super Ljava/lang/Object;
.source "ThumbnailUpdater.java"

# interfaces
.implements Lcom/android/camera/UriChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ThumbnailUpdater$VideoObserver;,
        Lcom/android/camera/ThumbnailUpdater$ImageObserver;,
        Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;,
        Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ThumbnailUpdater"


# instance fields
.field public mActivityBaseRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/android/camera/ActivityBase;",
            ">;"
        }
    .end annotation
.end field

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mImageObserver:Lcom/android/camera/ThumbnailUpdater$ImageObserver;

.field public mLastUri:Landroid/net/Uri;

.field public mLoadThumbnailTask:Lcom/xiaomi/camera/common/LifecycleAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/common/LifecycleAsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/camera/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field public mThumbnail:Lcom/android/camera/Thumbnail;

.field public mVideoObserver:Lcom/android/camera/ThumbnailUpdater$VideoObserver;

.field public mViewRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mActivityBaseRef:Ljava/lang/ref/Reference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;

    .line 4
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ThumbnailUpdaterWork"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mHandlerThread:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance p1, Lcom/android/camera/ThumbnailUpdater$ImageObserver;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v0, p0}, Lcom/android/camera/ThumbnailUpdater$ImageObserver;-><init>(Landroid/os/Handler;Lcom/android/camera/UriChangedListener;)V

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mImageObserver:Lcom/android/camera/ThumbnailUpdater$ImageObserver;

    .line 7
    new-instance p1, Lcom/android/camera/ThumbnailUpdater$VideoObserver;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v0, p0}, Lcom/android/camera/ThumbnailUpdater$VideoObserver;-><init>(Landroid/os/Handler;Lcom/android/camera/UriChangedListener;)V

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mVideoObserver:Lcom/android/camera/ThumbnailUpdater$VideoObserver;

    .line 8
    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mImageObserver:Lcom/android/camera/ThumbnailUpdater$ImageObserver;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mVideoObserver:Lcom/android/camera/ThumbnailUpdater$VideoObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static synthetic access$000(Z)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/camera/ThumbnailUpdater;->getBaseUir(Z)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Landroid/net/Uri;Z)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/ThumbnailUpdater;->queryLastId(Landroid/net/Uri;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getBaseUir(Z)Landroid/net/Uri;
    .locals 6

    const-string v0, "external_primary"

    if-eqz p0, :cond_0

    .line 1
    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPriorityStoragePreference()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MediaStore;->getExternalVolumeNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getSdcardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p0, :cond_2

    .line 9
    invoke-static {v4}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v4}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_1
    move-object v1, p0

    :cond_3
    return-object v1
.end method

.method public static queryLastId(Landroid/net/Uri;Z)J
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "_id"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id DESC"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    .line 3
    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "android:query-arg-sql-sort-order"

    .line 4
    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android:query-arg-limit"

    const/4 v7, 0x1

    .line 5
    invoke-virtual {v6, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p1, p0, v1, v6, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v4, p0

    :cond_0
    if-eqz v3, :cond_1

    .line 9
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "ThumbnailUpdater"

    const-string/jumbo v0, "queryLastId error"

    .line 10
    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v4

    :goto_2
    if-eqz v3, :cond_2

    .line 11
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 12
    :cond_2
    throw p0
.end method


# virtual methods
.method public synthetic OooO00o(ZIZ)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    const-string p2, "ThumbnailUpdater"

    const-string/jumbo p3, "won\'t update thumbnail"

    invoke-static {p2, p3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateThumbnail(Lcom/android/camera/Thumbnail;ZIZ)V

    return-void
.end method

.method public cancelTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailUpdater"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mImageObserver:Lcom/android/camera/ThumbnailUpdater$ImageObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mVideoObserver:Lcom/android/camera/ThumbnailUpdater$VideoObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method public getLastThumbnail()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mActivityBaseRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastThumbnail: cancel task "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ThumbnailUpdater"

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->cancel(Z)V

    .line 6
    :cond_1
    new-instance v1, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/ThumbnailUpdater;->mActivityBaseRef:Ljava/lang/ref/Reference;

    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-direct {v1, v3, v4, p0, v5}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;-><init>(ZLjava/lang/ref/Reference;Lcom/android/camera/ThumbnailUpdater;Lcom/android/camera/Thumbnail;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->addLifecycleOwner(Landroidx/lifecycle/Lifecycle;)Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    move-result-object v0

    const-class v1, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    return-void
.end method

.method public getLastThumbnailUncached(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mActivityBaseRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastThumbnailUncached: cancel task "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ThumbnailUpdater"

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->cancel(Z)V

    .line 6
    :cond_1
    new-instance v1, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater;->mActivityBaseRef:Ljava/lang/ref/Reference;

    iget-object v8, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    move-object v3, v1

    move v5, p1

    move-object v7, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;-><init>(ZZLjava/lang/ref/Reference;Lcom/android/camera/ThumbnailUpdater;Lcom/android/camera/Thumbnail;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->addLifecycleOwner(Landroidx/lifecycle/Lifecycle;)Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    move-result-object p1

    const-class v0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    return-void
.end method

.method public getLastUri()Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mLastUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailUpdater"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLastUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getThumbnail()Lcom/android/camera/Thumbnail;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    return-object v0
.end method

.method public getViewRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mViewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onUriChanged(Landroid/net/Uri;Landroid/net/Uri;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLastUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    array-length v1, p1

    if-lez v1, :cond_1

    .line 6
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    .line 7
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 9
    :cond_1
    iput-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLastUri:Landroid/net/Uri;

    return-void
.end method

.method public saveThumbnailToFile()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mActivityBaseRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/Thumbnail;->fromFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;

    iget-object v2, p0, Lcom/android/camera/ThumbnailUpdater;->mActivityBaseRef:Ljava/lang/ref/Reference;

    invoke-direct {v1, v2}, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;-><init>(Ljava/lang/ref/Reference;)V

    .line 5
    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->addLifecycleOwner(Landroidx/lifecycle/Lifecycle;)Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    move-result-object v0

    const-class v1, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/camera/Thumbnail;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/camera/common/LifecycleAsyncTask;

    :cond_1
    return-void
.end method

.method public setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZZ)V

    return-void
.end method

.method public setThumbnail(Lcom/android/camera/Thumbnail;ZZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p3, p4}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView(ZZ)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mLastUri:Landroid/net/Uri;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setThumbnail mLastUri="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/ThumbnailUpdater;->mLastUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ThumbnailUpdater"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setViewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mViewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public updatePreviewThumbnailUri(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/Thumbnail;->setUri(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public updateThumbnailView(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView(ZZ)V

    return-void
.end method

.method public updateThumbnailView(ZZ)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mActivityBaseRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 4
    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/Oooo0o;

    invoke-direct {v2, p0, p1, v0, p2}, LOooO0O0/OooO0O0/OooO00o/Oooo0o;-><init>(Lcom/android/camera/ThumbnailUpdater;ZIZ)V

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
