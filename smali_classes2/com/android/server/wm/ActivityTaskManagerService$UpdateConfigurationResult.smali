.class final Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;
.super Ljava/lang/Object;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UpdateConfigurationResult"
.end annotation


# instance fields
.field activityRelaunched:Z

.field changes:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    .line 530
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->activityRelaunched:Z

    .line 531
    return-void
.end method
