.class Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;
.super Ljava/lang/Object;
.source "LockSettingsStrongAuth.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStrongAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeakFaceTimeoutAlarmListener"
.end annotation


# instance fields
.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0
    .param p2, "userId"    # I

    .line 212
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;->mUserId:I

    .line 214
    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 2

    .line 218
    const-string v0, "LockSettings"

    const-string v1, "[WeakFace] Weak Face Timeout!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$000(Lcom/android/server/locksettings/LockSettingsStrongAuth;Z)V

    .line 220
    return-void
.end method
