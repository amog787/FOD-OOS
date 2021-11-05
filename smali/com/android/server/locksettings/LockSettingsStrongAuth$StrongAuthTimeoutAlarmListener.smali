.class public Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;
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
    name = "StrongAuthTimeoutAlarmListener"
.end annotation


# instance fields
.field private mLatestStrongAuthTime:J

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;JI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p2, "latestStrongAuthTime"    # J
    .param p4, "userId"    # I

    .line 530
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-wide p2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->mLatestStrongAuthTime:J

    .line 532
    iput p4, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->mUserId:I

    .line 533
    return-void
.end method


# virtual methods
.method public getLatestStrongAuthTime()J
    .locals 2

    .line 548
    iget-wide v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->mLatestStrongAuthTime:J

    return-wide v0
.end method

.method public onAlarm()V
    .locals 3

    .line 553
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->mUserId:I

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 554
    return-void
.end method

.method public setLatestStrongAuthTime(J)V
    .locals 0
    .param p1, "strongAuthTime"    # J

    .line 540
    iput-wide p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->mLatestStrongAuthTime:J

    .line 541
    return-void
.end method
