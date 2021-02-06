.class public final synthetic Lcom/android/server/-$$Lambda$AlarmManagerService$ZVedZIeWdB3G6AGM0_-9P_GEO24;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:Landroid/app/IAlarmListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$ZVedZIeWdB3G6AGM0_-9P_GEO24;->f$0:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$ZVedZIeWdB3G6AGM0_-9P_GEO24;->f$1:Landroid/app/IAlarmListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$ZVedZIeWdB3G6AGM0_-9P_GEO24;->f$0:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$ZVedZIeWdB3G6AGM0_-9P_GEO24;->f$1:Landroid/app/IAlarmListener;

    check-cast p1, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->lambda$removeLocked$0(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result p1

    return p1
.end method
