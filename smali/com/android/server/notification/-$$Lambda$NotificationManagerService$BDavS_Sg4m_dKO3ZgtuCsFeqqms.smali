.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$BDavS_Sg4m_dKO3ZgtuCsFeqqms;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic f$1:Lcom/android/server/notification/NotificationRecord;

.field public final synthetic f$2:Landroid/os/VibrationEffect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$BDavS_Sg4m_dKO3ZgtuCsFeqqms;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$BDavS_Sg4m_dKO3ZgtuCsFeqqms;->f$1:Lcom/android/server/notification/NotificationRecord;

    iput-object p3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$BDavS_Sg4m_dKO3ZgtuCsFeqqms;->f$2:Landroid/os/VibrationEffect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$BDavS_Sg4m_dKO3ZgtuCsFeqqms;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$BDavS_Sg4m_dKO3ZgtuCsFeqqms;->f$1:Lcom/android/server/notification/NotificationRecord;

    iget-object v2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$BDavS_Sg4m_dKO3ZgtuCsFeqqms;->f$2:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->lambda$playVibration$5$NotificationManagerService(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V

    return-void
.end method
