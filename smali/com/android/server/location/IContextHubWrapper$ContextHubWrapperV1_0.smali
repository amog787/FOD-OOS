.class Lcom/android/server/location/IContextHubWrapper$ContextHubWrapperV1_0;
.super Lcom/android/server/location/IContextHubWrapper;
.source "IContextHubWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/IContextHubWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextHubWrapperV1_0"
.end annotation


# instance fields
.field private mHub:Landroid/hardware/contexthub/V1_0/IContexthub;


# direct methods
.method constructor <init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V
    .locals 0
    .param p1, "hub"    # Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 103
    invoke-direct {p0}, Lcom/android/server/location/IContextHubWrapper;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/server/location/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 105
    return-void
.end method


# virtual methods
.method public getHub()Landroid/hardware/contexthub/V1_0/IContexthub;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/server/location/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    return-object v0
.end method

.method public onSettingChanged(BB)V
    .locals 0
    .param p1, "setting"    # B
    .param p2, "newValue"    # B

    .line 115
    return-void
.end method

.method public supportsSettingNotifications()Z
    .locals 1

    .line 112
    const/4 v0, 0x0

    return v0
.end method
