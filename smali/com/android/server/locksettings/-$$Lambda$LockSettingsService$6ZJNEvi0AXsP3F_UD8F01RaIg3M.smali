.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$6ZJNEvi0AXsP3F_UD8F01RaIg3M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$6ZJNEvi0AXsP3F_UD8F01RaIg3M;->f$0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$6ZJNEvi0AXsP3F_UD8F01RaIg3M;->f$0:I

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->lambda$notifySeparateProfileChallengeChanged$0(I)V

    return-void
.end method
