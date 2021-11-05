.class Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;
.super Ljava/lang/Object;
.source "GnssBatchingProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssBatchingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GnssBatchingProviderNative"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanupBatching()V
    .locals 0

    .line 146
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->access$500()V

    .line 147
    return-void
.end method

.method public flushBatch()V
    .locals 0

    .line 134
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->access$200()V

    .line 135
    return-void
.end method

.method public getBatchSize()I
    .locals 1

    .line 126
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->access$000()I

    move-result v0

    return v0
.end method

.method public initBatching()Z
    .locals 1

    .line 142
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->access$400()Z

    move-result v0

    return v0
.end method

.method public startBatch(JZ)Z
    .locals 1
    .param p1, "periodNanos"    # J
    .param p3, "wakeOnFifoFull"    # Z

    .line 130
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/GnssBatchingProvider;->access$100(JZ)Z

    move-result v0

    return v0
.end method

.method public stopBatch()Z
    .locals 1

    .line 138
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->access$300()Z

    move-result v0

    return v0
.end method
