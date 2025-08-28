.class public Lcom/xiaomi/camera/core/ParallelDataZipper$2;
.super Ljava/lang/Object;
.source "ParallelDataZipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/core/ParallelDataZipper;->join(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

.field public final synthetic val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

.field public final synthetic val$isFirst:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    iput-object p2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    iput-boolean p3, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$isFirst:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/util/Map$Entry;)Lcom/xiaomi/camera/core/CaptureData;
    .locals 0

    .line 2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/CaptureData;

    return-object p0
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/CaptureData;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    invoke-virtual {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v1

    .line 2
    iget-object v3, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    invoke-virtual {v3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getSequenceId()I

    move-result v3

    .line 3
    iget-object v4, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    invoke-virtual {v4}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getCaptureId()Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v5, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v5}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$500(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/core/CaptureData;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_0

    .line 5
    iget-object v5, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v5}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$500(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v8, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO00o;

    invoke-direct {v8, v4}, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO00o;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v8, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO0O0;->OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO0O0;

    .line 7
    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 8
    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v5

    const/4 v8, 0x0

    .line 9
    invoke-virtual {v5, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/core/CaptureData;

    if-nez v5, :cond_0

    .line 10
    iget-object v5, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v5, v1, v2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$600(Lcom/xiaomi/camera/core/ParallelDataZipper;J)J

    move-result-wide v8

    .line 11
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v5

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v7

    .line 12
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v6

    const-string v12, "setResult: no capture data with captureId: %s, try timestamp: %d"

    .line 13
    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v5, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v5}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$500(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/core/CaptureData;

    goto :goto_0

    :cond_0
    move-wide v8, v1

    :goto_0
    if-nez v5, :cond_1

    .line 15
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setResult: no capture data with timestamp: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    move v10, v6

    move-wide v11, v8

    move v8, v10

    move v9, v8

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData;->getStreamNum()I

    move-result v7

    .line 17
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData;->isRequireTuningData()Z

    move-result v8

    .line 18
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData;->getSatFusionType()I

    move-result v9

    .line 19
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData;->isHdrSR()Z

    move-result v10

    .line 20
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v11

    .line 21
    :goto_1
    iget-object v5, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v5}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$700(Lcom/xiaomi/camera/core/ParallelDataZipper;)Landroid/util/LongSparseArray;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    if-nez v5, :cond_2

    .line 22
    new-instance v5, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    move-object v13, v5

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v6

    move/from16 v18, v10

    invoke-direct/range {v13 .. v18}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;-><init>(IZIZZ)V

    .line 23
    invoke-virtual {v5, v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setCaptureId(Ljava/lang/String;)V

    .line 24
    iget-object v4, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v4}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$700(Lcom/xiaomi/camera/core/ParallelDataZipper;)Landroid/util/LongSparseArray;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v5}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    goto :goto_2

    .line 25
    :cond_2
    invoke-virtual {v5, v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setCaptureId(Ljava/lang/String;)V

    .line 26
    :goto_2
    invoke-virtual {v5, v11, v12}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setFirstTimestamp(J)V

    .line 27
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getStreamNum()I

    move-result v4

    if-eq v4, v7, :cond_3

    if-eqz v7, :cond_3

    .line 28
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setResult: update stream number with: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {v5, v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setStreamNum(I)V

    .line 30
    :cond_3
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isRequireTuningData()Z

    move-result v4

    if-eq v4, v8, :cond_4

    .line 31
    invoke-virtual {v5, v8}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setRequireTuningData(Z)V

    .line 32
    :cond_4
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSatFusionType()I

    move-result v4

    if-eq v4, v9, :cond_5

    .line 33
    invoke-virtual {v5, v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setSatFusionType(I)V

    .line 34
    :cond_5
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isHdrSrShot()Z

    move-result v4

    if-eq v4, v10, :cond_6

    .line 35
    invoke-virtual {v5, v10}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setIsHdrSrShot(Z)V

    .line 36
    :cond_6
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setResult: timestamp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", firstTimestamp = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sequenceId = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamNum = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getStreamNum()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFirst = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$isFirst:Z

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fusionType = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasCaptureData = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHdrSr = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {v5, v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setHasCaptureData(Z)V

    .line 40
    iget-object v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    iget-boolean v2, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$isFirst:Z

    invoke-virtual {v5, v1, v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    .line 41
    iget-object v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v1, v5}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$800(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    return-void
.end method
