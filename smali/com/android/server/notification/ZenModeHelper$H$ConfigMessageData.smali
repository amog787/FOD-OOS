.class final Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper$H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfigMessageData"
.end annotation


# instance fields
.field public final config:Landroid/service/notification/ZenModeConfig;

.field public final reason:Ljava/lang/String;

.field public final setRingerMode:Z

.field final synthetic this$1:Lcom/android/server/notification/ZenModeHelper$H;

.field public triggeringComponent:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .locals 0
    .param p2, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "triggeringComponent"    # Landroid/content/ComponentName;
    .param p5, "setRingerMode"    # Z

    .line 1574
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->this$1:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1575
    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->config:Landroid/service/notification/ZenModeConfig;

    .line 1576
    iput-object p3, p0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->reason:Ljava/lang/String;

    .line 1577
    iput-boolean p5, p0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->setRingerMode:Z

    .line 1578
    iput-object p4, p0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->triggeringComponent:Landroid/content/ComponentName;

    .line 1579
    return-void
.end method
