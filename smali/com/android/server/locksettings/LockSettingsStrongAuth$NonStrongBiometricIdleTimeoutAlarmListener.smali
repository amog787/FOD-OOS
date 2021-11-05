.class public Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;
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
    name = "NonStrongBiometricIdleTimeoutAlarmListener"
.end annotation


# instance fields
.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p2, "userId"    # I

    .line 583
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;->mUserId:I

    .line 585
    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowed(ZI)V

    .line 591
    return-void
.end method
