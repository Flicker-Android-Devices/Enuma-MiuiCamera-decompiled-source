.class public Lcom/android/camera/AudioCalculateDecibels;
.super Ljava/lang/Object;
.source "AudioCalculateDecibels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/AudioCalculateDecibels$WorkerHandler;,
        Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnable;,
        Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEF_AUDIO_FILE:Ljava/lang/String; = "audio_test.pcm"

.field public static final MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field public static final MSG_THREAD_RELEASE:I = 0x2

.field public static final MSG_THREAD_START:I = 0x1

.field public static final SAMPLE_RATE:I = 0xac44

.field public static final TAG:Ljava/lang/String; = "AudioCalculateDecibels"


# instance fields
.field public mAudioDataOs:Ljava/io/FileOutputStream;

.field public mAudioFileName:Ljava/lang/String;

.field public mAudioRecord:Landroid/media/AudioRecord;

.field public mAudioSource:I

.field public mBuffer:[B

.field public mCacheDir:Ljava/lang/String;

.field public mOnVolumeListener:Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;

.field public mRecBufSize:I

.field public mRunnale:Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnable;

.field public mWorkHandler:Landroid/os/Handler;

.field public final mWorkHandlerLock:Ljava/lang/Object;

.field public final mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkHandlerLock:Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/AudioCalculateDecibels;->mCacheDir:Ljava/lang/String;

    .line 4
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "AudioMapWorkerThread"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkThread:Landroid/os/HandlerThread;

    const p2, 0xac44

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 5
    invoke-static {p2, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p2

    iput p2, p0, Lcom/android/camera/AudioCalculateDecibels;->mRecBufSize:I

    const/16 v0, 0x2000

    .line 6
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/AudioCalculateDecibels;->mRecBufSize:I

    .line 7
    new-array p2, p2, [B

    iput-object p2, p0, Lcom/android/camera/AudioCalculateDecibels;->mBuffer:[B

    .line 8
    iput p1, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioSource:I

    .line 9
    new-instance p1, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioSource:I

    iget v5, p0, Lcom/android/camera/AudioCalculateDecibels;->mRecBufSize:I

    const v2, 0xac44

    const/4 v3, 0x3

    const/4 v4, 0x2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p1, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/AudioCalculateDecibels;)Landroid/media/AudioRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/AudioCalculateDecibels;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/AudioCalculateDecibels;->readAudioRecordBuffer()I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/AudioCalculateDecibels;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/AudioCalculateDecibels;->mBuffer:[B

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/AudioCalculateDecibels;[B)[F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/AudioCalculateDecibels;->calculateVolumeSize([B)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/AudioCalculateDecibels;)Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/AudioCalculateDecibels;->mOnVolumeListener:Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/AudioCalculateDecibels;)Ljava/io/FileOutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioDataOs:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method private calculateVolumeSize([B)[F
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :goto_0
    if-ge v5, v1, :cond_2

    .line 2
    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    .line 3
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v5, 0x2

    .line 4
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v5, 0x3

    .line 5
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    shl-int/lit8 v7, v9, 0x8

    add-int/2addr v8, v7

    const v7, 0xffff

    const v9, 0x8000

    if-lt v6, v9, :cond_0

    sub-int v6, v7, v6

    :cond_0
    if-lt v8, v9, :cond_1

    sub-int v8, v7, v8

    .line 6
    :cond_1
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    .line 7
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    :cond_2
    int-to-float p1, v1

    div-float/2addr v3, p1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v3, v1

    div-float/2addr v4, p1

    div-float/2addr v4, v1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v3, p1

    float-to-double v5, v3

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    double-to-float v1, v5

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v1, v3

    add-float/2addr v4, p1

    float-to-double v4, v4

    .line 9
    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    double-to-float p1, v4

    mul-float/2addr p1, v3

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object v0
.end method

.method private isAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readAudioRecordBuffer()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mBuffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/AudioCalculateDecibels;->mRecBufSize:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AudioCalculateDecibels"

    const-string/jumbo v1, "release()"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/AudioCalculateDecibels;->stopRecord()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/AudioCalculateDecibels;->stopWork()V

    const-string v0, "AudioCalculateDecibels"

    const-string/jumbo v1, "release record..."

    .line 7
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendReleaseMessage()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mRunnale:Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnable;->setIsStopRecordThread(Z)V

    :cond_0
    const-string v0, "AudioCalculateDecibels"

    const-string v2, "E: sendReleaseMessage"

    .line 3
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/AudioCalculateDecibels;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    .line 7
    iput v2, v1, Landroid/os/Message;->what:I

    .line 8
    iget-object v2, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v1, "AudioCalculateDecibels"

    const-string/jumbo v2, "sendReleaseMessage"

    .line 9
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v2, "AudioCalculateDecibels"

    const-string/jumbo v3, "sendReleaseMessage: failed. %s has died!"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 10
    iget-object v5, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkThread:Landroid/os/HandlerThread;

    if-nez v5, :cond_2

    const-string v5, "WorkThread"

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_0
    aput-object v5, v1, v4

    .line 11
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "AudioCalculateDecibels"

    const-string v1, "X: sendReleaseMessage"

    .line 13
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public sendStartMessage()V
    .locals 6

    const-string v0, "AudioCalculateDecibels"

    const-string v1, "E: sendStartMessage"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/AudioCalculateDecibels;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 5
    iput v2, v1, Landroid/os/Message;->what:I

    .line 6
    iget-object v2, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v1, "AudioCalculateDecibels"

    const-string/jumbo v2, "sendStartMessage"

    .line 7
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v1, "AudioCalculateDecibels"

    const-string/jumbo v3, "sendStartMessage: failed. %s has died!"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 8
    iget-object v5, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkThread:Landroid/os/HandlerThread;

    if-nez v5, :cond_1

    const-string v5, "WorkThread"

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_0
    aput-object v5, v2, v4

    .line 9
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "AudioCalculateDecibels"

    const-string v1, "X: sendStartMessage"

    .line 11
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setOnVolumeListener(Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/AudioCalculateDecibels;->mOnVolumeListener:Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;

    return-void
.end method

.method public start()V
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mCacheDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "audio_test.pcm"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioFileName:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioDataOs:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 7
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioSource:I

    const v3, 0xac44

    const/4 v4, 0x2

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/camera/AudioCalculateDecibels;->mRecBufSize:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_3
    const-string v0, "AudioCalculateDecibels"

    const-string/jumbo v1, "start record..."

    .line 9
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 11
    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 12
    new-instance v0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnable;-><init>(Lcom/android/camera/AudioCalculateDecibels;Lcom/android/camera/AudioCalculateDecibels$1;)V

    iput-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mRunnale:Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnable;

    .line 13
    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :cond_5
    const-string v1, "AudioRecord State is error"

    .line 15
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startWork()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const-string v0, "AudioCalculateDecibels"

    const-string v1, "E: init WorkerHandler"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/android/camera/AudioCalculateDecibels$WorkerHandler;

    iget-object v2, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/camera/AudioCalculateDecibels$WorkerHandler;-><init>(Landroid/os/Looper;Lcom/android/camera/AudioCalculateDecibels;)V

    iput-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkHandler:Landroid/os/Handler;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopRecord()V
    .locals 3

    const-string v0, "AudioCalculateDecibels"

    const-string/jumbo v1, "stopRecord()"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mRunnale:Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnable;

    const-string/jumbo v1, "stop record..."

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopWork()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iput-object v2, p0, Lcom/android/camera/AudioCalculateDecibels;->mWorkHandler:Landroid/os/Handler;

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
