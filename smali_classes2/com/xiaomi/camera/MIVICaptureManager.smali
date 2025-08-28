.class public Lcom/xiaomi/camera/MIVICaptureManager;
.super Ljava/lang/Object;
.source "MIVICaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/MIVICaptureManager$Holder;,
        Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MIVICaptureManager"

.field public static mFlightPictureListenerArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;",
            ">;"
        }
    .end annotation
.end field

.field public mParallelTaskDataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/camera/core/ParallelTaskData;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mSnapshotAvailability:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/MIVICaptureManager;->mFlightPictureListenerArray:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/MIVICaptureManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/MIVICaptureManager;->mParallelTaskDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/xiaomi/camera/MIVICaptureManager;->mSnapshotAvailability:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/MIVICaptureManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/MIVICaptureManager;-><init>()V

    return-void
.end method

.method private addListener(Ljava/lang/String;Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;)V
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addListener: key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | listener > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIVICaptureManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/xiaomi/camera/MIVICaptureManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addParallelTaskData(Ljava/lang/String;Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addParallelTaskData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | key > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIVICaptureManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/MIVICaptureManager;->mParallelTaskDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createKey(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/xiaomi/camera/MIVICaptureManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/MIVICaptureManager$Holder;->INSTANCE:Lcom/xiaomi/camera/MIVICaptureManager;

    return-object v0
.end method


# virtual methods
.method public addAll(IJLjava/lang/String;Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 8

    .line 4
    sget-object v0, Lcom/xiaomi/camera/MIVICaptureManager;->mFlightPictureListenerArray:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/MIVICaptureManager;->mFlightPictureListenerArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 6
    sget-object v1, Lcom/xiaomi/camera/MIVICaptureManager;->mFlightPictureListenerArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;

    const-string v1, "MIVICaptureManager"

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAll: FinalPictureListener > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    .line 8
    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/camera/MIVICaptureManager;->addAll(JLjava/lang/String;Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;)V

    const-string p2, "MIVICaptureManager"

    const-string p3, "addAll: remove FinalPictureListener from flight array"

    .line 9
    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-object p2, Lcom/xiaomi/camera/MIVICaptureManager;->mFlightPictureListenerArray:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    monitor-exit v0

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "the FinalPictureListener is not found in the array, please check the code"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addAll(JLjava/lang/String;Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1, p2}, Lcom/xiaomi/camera/MIVICaptureManager;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1, p4}, Lcom/xiaomi/camera/MIVICaptureManager;->addParallelTaskData(Ljava/lang/String;Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 3
    invoke-direct {p0, p1, p5}, Lcom/xiaomi/camera/MIVICaptureManager;->addListener(Ljava/lang/String;Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;)V

    return-void
.end method

.method public addListener(ILcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/camera/MIVICaptureManager;->mFlightPictureListenerArray:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    const-string v1, "MIVICaptureManager"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addListener:  listener > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v1, Lcom/xiaomi/camera/MIVICaptureManager;->mFlightPictureListenerArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getParallelTaskData(Ljava/lang/String;J)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/camera/MIVICaptureManager;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getParallelTaskData:  key > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MIVICaptureManager"

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p2, p0, Lcom/xiaomi/camera/MIVICaptureManager;->mParallelTaskDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/ParallelTaskData;

    return-object p1
.end method

.method public isSnapshotAvailable()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/MIVICaptureManager;->mSnapshotAvailability:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSnapshotAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MIVICaptureManager"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public notifyCaptureCompleted(Ljava/lang/String;J)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/camera/MIVICaptureManager;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/MIVICaptureManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyHalBufferReceiveCompleted: key > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | listener > "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MIVICaptureManager"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;->onCaptureCompleted()V

    const/4 p1, 0x4

    const-string p2, "MIVICaptureManager"

    const-string p3, "notifyHalBufferReceiveCompleted: onAllHalFrameReceived"

    .line 5
    invoke-static {p1, p2, p3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCaptureCompleted: with null callback |\u3000pictureName\u3000> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | frameNumber > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MIVICaptureManager"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "notifyCaptureCompleted: start callback with mFlightPictureListenerArray , and this size is > "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/xiaomi/camera/MIVICaptureManager;->mFlightPictureListenerArray:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MIVICaptureManager"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object p1, Lcom/xiaomi/camera/MIVICaptureManager;->mFlightPictureListenerArray:Landroid/util/SparseArray;

    monitor-enter p1

    const/4 p2, 0x0

    .line 9
    :goto_0
    :try_start_0
    sget-object p3, Lcom/xiaomi/camera/MIVICaptureManager;->mFlightPictureListenerArray:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 10
    sget-object p3, Lcom/xiaomi/camera/MIVICaptureManager;->mFlightPictureListenerArray:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;

    .line 11
    invoke-interface {p3}, Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;->onCaptureCompleted()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    monitor-exit p1

    :goto_1
    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public notifyCaptureFailed(Ljava/lang/String;J)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/camera/MIVICaptureManager;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/MIVICaptureManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyHalBufferReceiveError: key > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | listener > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MIVICaptureManager"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const/4 p1, 0x4

    const-string p2, "notifyFinish: notifyHalBufferReceiveError"

    .line 4
    invoke-static {p1, v3, p2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-interface {v1}, Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;->onCaptureFailed()V

    .line 6
    iget-object p1, p0, Lcom/xiaomi/camera/MIVICaptureManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCaptureFailed: with null callback |\u3000pictureName\u3000> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | frameNumber > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public notifyFinish(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->getPictureName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->getFrameNumber()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/camera/MIVICaptureManager;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/MIVICaptureManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyFinish: key > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | listener > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MIVICaptureManager"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    const-string v2, "notifyFinish: finish"

    .line 4
    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-interface {v1, p1}, Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;->onImageReceived(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V

    .line 6
    iget-object p1, p0, Lcom/xiaomi/camera/MIVICaptureManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFinish: with null callback, key is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public releaseData(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->getPictureName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->getFrameNumber()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/camera/MIVICaptureManager;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIVICaptureManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/MIVICaptureManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/xiaomi/camera/MIVICaptureManager;->mParallelTaskDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSnapshotAvailability(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSnapshotAvailability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "MIVICaptureManager"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lcom/xiaomi/camera/MIVICaptureManager;->mSnapshotAvailability:I

    return-void
.end method
