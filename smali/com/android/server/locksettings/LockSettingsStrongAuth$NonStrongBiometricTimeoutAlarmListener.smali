.class public Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;
.super Ljava/lang/Object;
.source "LockSettingsStrongAuth.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStrongAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NonStrongBiometricTimeoutAlarmListener"
.end annotation


# instance fields
.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p2, "userId"    # I

    .line 565
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;->mUserId:I

    .line 567
    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;->mUserId:I

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 572
    return-void
.end method
