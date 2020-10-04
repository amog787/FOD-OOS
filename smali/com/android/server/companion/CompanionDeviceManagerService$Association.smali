.class Lcom/android/server/companion/CompanionDeviceManagerService$Association;
.super Ljava/lang/Object;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Association"
.end annotation


# instance fields
.field public final companionAppPackage:Ljava/lang/String;

.field public final deviceAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

.field public final uid:I


# direct methods
.method private constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "deviceAddress"    # Ljava/lang/String;
    .param p4, "companionAppPackage"    # Ljava/lang/String;

    .line 629
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    iput p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->uid:I

    .line 631
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->deviceAddress:Ljava/lang/String;

    .line 632
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    .line 633
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/companion/CompanionDeviceManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/android/server/companion/CompanionDeviceManagerService$1;

    .line 624
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/companion/CompanionDeviceManagerService$Association;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 637
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 638
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 640
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    .line 642
    .local v1, "that":Lcom/android/server/companion/CompanionDeviceManagerService$Association;
    iget v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->uid:I

    iget v3, v1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->uid:I

    if-eq v2, v3, :cond_2

    return v0

    .line 643
    :cond_2
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->deviceAddress:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 644
    :cond_3
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 638
    .end local v1    # "that":Lcom/android/server/companion/CompanionDeviceManagerService$Association;
    :cond_4
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 650
    iget v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->uid:I

    .line 651
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 652
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 653
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
