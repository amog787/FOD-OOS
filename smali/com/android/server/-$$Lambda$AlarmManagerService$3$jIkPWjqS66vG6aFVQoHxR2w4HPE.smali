.class public final synthetic Lcom/android/server/-$$Lambda$AlarmManagerService$3$jIkPWjqS66vG6aFVQoHxR2w4HPE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/AlarmManagerService$3;

.field public final synthetic f$1:Landroid/app/IAlarmCompleteListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/AlarmManagerService$3;Landroid/app/IAlarmCompleteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$3$jIkPWjqS66vG6aFVQoHxR2w4HPE;->f$0:Lcom/android/server/AlarmManagerService$3;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$3$jIkPWjqS66vG6aFVQoHxR2w4HPE;->f$1:Landroid/app/IAlarmCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$3$jIkPWjqS66vG6aFVQoHxR2w4HPE;->f$0:Lcom/android/server/AlarmManagerService$3;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$3$jIkPWjqS66vG6aFVQoHxR2w4HPE;->f$1:Landroid/app/IAlarmCompleteListener;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$3;->lambda$doAlarm$0$AlarmManagerService$3(Landroid/app/IAlarmCompleteListener;)V

    return-void
.end method
