.class public abstract Lcom/android/server/notification/toast/ToastRecord;
.super Ljava/lang/Object;
.source "ToastRecord.java"


# instance fields
.field public final displayId:I

.field private mDuration:I

.field protected final mNotificationManager:Lcom/android/server/notification/NotificationManagerService;

.field public final pid:I

.field public final pkg:Ljava/lang/String;

.field public final token:Landroid/os/IBinder;

.field public final uid:I

.field public final windowToken:Landroid/os/Binder;


# direct methods
.method protected constructor <init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Landroid/os/IBinder;ILandroid/os/Binder;I)V
    .locals 0
    .param p1, "notificationManager"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "duration"    # I
    .param p7, "windowToken"    # Landroid/os/Binder;
    .param p8, "displayId"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/notification/toast/ToastRecord;->mNotificationManager:Lcom/android/server/notification/NotificationManagerService;

    .line 43
    iput p2, p0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    .line 44
    iput p3, p0, Lcom/android/server/notification/toast/ToastRecord;->pid:I

    .line 45
    iput-object p4, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    .line 47
    iput-object p7, p0, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    .line 48
    iput p8, p0, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    .line 49
    iput p6, p0, Lcom/android/server/notification/toast/ToastRecord;->mDuration:I

    .line 50
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 83
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public getDuration()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/android/server/notification/toast/ToastRecord;->mDuration:I

    return v0
.end method

.method public abstract hide()V
.end method

.method public abstract show()Z
.end method

.method public update(I)V
    .locals 0
    .param p1, "duration"    # I

    .line 76
    iput p1, p0, Lcom/android/server/notification/toast/ToastRecord;->mDuration:I

    .line 77
    return-void
.end method
