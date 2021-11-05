.class Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;
.super Ljava/lang/Object;
.source "SysUiStatsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/SysUiStatsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;
    .locals 2

    .line 70
    new-instance v0, Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/notification/SysUiStatsEvent$Builder;-><init>(Landroid/util/StatsEvent$Builder;)V

    return-object v0
.end method
