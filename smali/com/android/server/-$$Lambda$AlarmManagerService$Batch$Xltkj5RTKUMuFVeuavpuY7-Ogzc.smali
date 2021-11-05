.class public final synthetic Lcom/android/server/-$$Lambda$AlarmManagerService$Batch$Xltkj5RTKUMuFVeuavpuY7-Ogzc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/AlarmManagerService$Alarm;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$Batch$Xltkj5RTKUMuFVeuavpuY7-Ogzc;->f$0:Lcom/android/server/AlarmManagerService$Alarm;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$Batch$Xltkj5RTKUMuFVeuavpuY7-Ogzc;->f$0:Lcom/android/server/AlarmManagerService$Alarm;

    check-cast p1, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-static {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->lambda$remove$0(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result p1

    return p1
.end method
