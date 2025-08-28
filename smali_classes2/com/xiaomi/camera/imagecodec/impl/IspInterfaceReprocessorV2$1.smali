.class public Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2$1;
.super Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;
.source "IspInterfaceReprocessorV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton<",
        "Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;
    .locals 1

    .line 2
    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2$1;->create()Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;

    move-result-object v0

    return-object v0
.end method
