.class public Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;
.super Landroid/os/AsyncTask;
.source "Panorama3Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Panorama3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveOutputImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public mSaveImage:Z

.field public mStopMode:Ljava/lang/String;

.field public start_time:J

.field public final synthetic this$0:Lcom/android/camera/module/Panorama3Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Panorama3Module;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->mSaveImage:Z

    .line 3
    iput-object p3, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->mStopMode:Ljava/lang/String;

    return-void
.end method

.method private savePanoramaPicture()V
    .locals 15

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "savePanoramaPicture start"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x600

    .line 3
    sget-object v3, Lcom/android/camera/module/Panorama3Module;->mEngineLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "savePanoramaPicture enter mEngineLock"

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v5, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$800(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v5

    if-nez v5, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "savePanoramaPicture while mMorphoPanoramaGP3 is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$1400(Lcom/android/camera/module/Panorama3Module;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0, v4}, Lcom/android/camera/module/Panorama3Module;->access$1502(Lcom/android/camera/module/Panorama3Module;Z)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 9
    :cond_0
    :try_start_2
    iget-boolean v5, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->mSaveImage:Z

    const/4 v6, 0x1

    if-nez v5, :cond_2

    .line 10
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "savePanoramaPicture, don\'t save image"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$800(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$900(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/RoundDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/panorama/RoundDetector;->currentDegree0Base()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->end(ID)I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "savePanoramaPicture, end() -> 0x%x"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$1400(Lcom/android/camera/module/Panorama3Module;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0, v4}, Lcom/android/camera/module/Panorama3Module;->access$1502(Lcom/android/camera/module/Panorama3Module;Z)Z

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 15
    :cond_2
    :try_start_4
    iget-object v5, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$800(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setNoiseReductionParam(I)I

    move-result v5

    if-eqz v5, :cond_3

    .line 16
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setNoiseReductionParam error ret:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_3
    iget-object v5, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$800(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setUnsharpStrength(I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "setUnsharpStrength error ret:0x%08X"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v4

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_4
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$800(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$900(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/RoundDetector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/panorama/RoundDetector;->currentDegree0Base()I

    move-result v5

    int-to-double v7, v5

    invoke-virtual {v2, v6, v7, v8}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->end(ID)I

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "savePanoramaPicture, end() -> 0x%x"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 21
    :try_start_5
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$1400(Lcom/android/camera/module/Panorama3Module;)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0, v4}, Lcom/android/camera/module/Panorama3Module;->access$1502(Lcom/android/camera/module/Panorama3Module;Z)Z

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    .line 23
    :cond_5
    :try_start_6
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 24
    iget-object v5, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$800(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->getClippingRect(Landroid/graphics/Rect;)I

    move-result v5

    if-eqz v5, :cond_6

    .line 25
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getClippingRect() -> 0x%x"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 26
    :try_start_7
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$1400(Lcom/android/camera/module/Panorama3Module;)V

    .line 27
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0, v4}, Lcom/android/camera/module/Panorama3Module;->access$1502(Lcom/android/camera/module/Panorama3Module;Z)Z

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-void

    .line 28
    :cond_6
    :try_start_8
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 29
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-eqz v11, :cond_a

    if-nez v12, :cond_7

    goto/16 :goto_0

    .line 30
    :cond_7
    iget-object v5, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$800(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->createOutputImage(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_8

    .line 31
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createOutputImage error ret:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 32
    :try_start_9
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$1400(Lcom/android/camera/module/Panorama3Module;)V

    .line 33
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0, v4}, Lcom/android/camera/module/Panorama3Module;->access$1502(Lcom/android/camera/module/Panorama3Module;Z)Z

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-void

    .line 34
    :cond_8
    :try_start_a
    invoke-static {}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object v2

    const/4 v5, 0x7

    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(II)Z

    .line 35
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object v5, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$1000(Lcom/android/camera/module/Panorama3Module;)J

    move-result-wide v7

    invoke-static {v2, v7, v8}, Lcom/android/camera/module/Panorama3Module;->access$1100(Lcom/android/camera/module/Panorama3Module;J)Ljava/lang/String;

    move-result-object v10

    .line 36
    invoke-static {v10, v4}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    new-array v2, v6, [Landroid/net/Uri;

    .line 37
    iget-object v5, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5, v2, v9, v11, v12}, Lcom/android/camera/module/Panorama3Module;->access$1200(Lcom/android/camera/module/Panorama3Module;[Landroid/net/Uri;Ljava/lang/String;II)Z

    move-result v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v5, :cond_9

    .line 38
    :try_start_b
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$1400(Lcom/android/camera/module/Panorama3Module;)V

    .line 39
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0, v4}, Lcom/android/camera/module/Panorama3Module;->access$1502(Lcom/android/camera/module/Panorama3Module;Z)Z

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    return-void

    .line 40
    :cond_9
    :try_start_c
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "savePanoramaPicture process duration %s ms"

    new-array v8, v6, [Ljava/lang/Object;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v8, v4

    .line 42
    invoke-static {v5, v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 43
    iget-object v7, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    aget-object v8, v2, v4

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->mStopMode:Ljava/lang/String;

    invoke-static/range {v7 .. v14}, Lcom/android/camera/module/Panorama3Module;->access$1300(Lcom/android/camera/module/Panorama3Module;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoost()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 45
    :try_start_d
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$1400(Lcom/android/camera/module/Panorama3Module;)V

    .line 46
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2, v4}, Lcom/android/camera/module/Panorama3Module;->access$1502(Lcom/android/camera/module/Panorama3Module;Z)Z

    .line 47
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 48
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const-string/jumbo v0, "savePanoramaPicture total duration %s ms"

    .line 50
    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 51
    :cond_a
    :goto_0
    :try_start_e
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getClippingRect() "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 52
    :try_start_f
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$1400(Lcom/android/camera/module/Panorama3Module;)V

    .line 53
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0, v4}, Lcom/android/camera/module/Panorama3Module;->access$1502(Lcom/android/camera/module/Panorama3Module;Z)Z

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    .line 54
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$1400(Lcom/android/camera/module/Panorama3Module;)V

    .line 55
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1, v4}, Lcom/android/camera/module/Panorama3Module;->access$1502(Lcom/android/camera/module/Panorama3Module;Z)Z

    .line 56
    throw v0

    :catchall_1
    move-exception v0

    .line 57
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    throw v0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "doInBackground>>"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->savePanoramaPicture()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .locals 7

    .line 2
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PanoramaFinish done"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p1, v1}, Lcom/android/camera/module/Panorama3Module;->access$1602(Lcom/android/camera/module/Panorama3Module;Z)Z

    .line 7
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "panorama mode has been paused"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView(Z)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {p1, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask$1;-><init>(Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p1, v1}, Lcom/android/camera/module/Panorama3Module;->access$1602(Lcom/android/camera/module/Panorama3Module;Z)Z

    .line 12
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->start_time:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "[MORTIME] PanoramaFinish time = %d"

    .line 14
    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->start_time:J

    return-void
.end method
