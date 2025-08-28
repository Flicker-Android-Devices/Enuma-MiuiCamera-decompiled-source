.class public Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider$1;
.super Lcom/xiaomi/camera/util/TypedValue;
.source "ParallelProcessProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/camera/util/TypedValue<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/util/TypedValue;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Integer;
    .locals 7

    const-string v0, "ParallelProcessProvider"

    const/4 v1, 0x2

    .line 2
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.miui.gallery.scanner"

    const-string v4, "query_external_supported_version"

    const/4 v5, 0x0

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x3

    if-eqz v2, :cond_2

    const-string v4, "supported_version"

    .line 3
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-le v2, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "failed to get version of com.miui.gallery.scanner"

    .line 4
    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "targetVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider$1;->create()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
