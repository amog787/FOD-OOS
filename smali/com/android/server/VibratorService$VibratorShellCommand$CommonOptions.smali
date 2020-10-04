.class final Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService$VibratorShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CommonOptions"
.end annotation


# instance fields
.field public force:Z

.field final synthetic this$1:Lcom/android/server/VibratorService$VibratorShellCommand;


# direct methods
.method private constructor <init>(Lcom/android/server/VibratorService$VibratorShellCommand;)V
    .locals 0

    .line 1845
    iput-object p1, p0, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->this$1:Lcom/android/server/VibratorService$VibratorShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1846
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->force:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService$VibratorShellCommand;Lcom/android/server/VibratorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/VibratorService$VibratorShellCommand;
    .param p2, "x1"    # Lcom/android/server/VibratorService$1;

    .line 1845
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;-><init>(Lcom/android/server/VibratorService$VibratorShellCommand;)V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 2
    .param p1, "opt"    # Ljava/lang/String;

    .line 1848
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x5d9

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "-f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 1850
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->force:Z

    .line 1853
    :goto_2
    return-void
.end method
