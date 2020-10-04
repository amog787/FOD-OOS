.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Hh44Kcp05cKI6Hc6dJfQupn4QY8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/locksettings/LockSettingsService;

.field private final synthetic f$1:Landroid/app/admin/PasswordMetrics;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Landroid/app/admin/PasswordMetrics;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Hh44Kcp05cKI6Hc6dJfQupn4QY8;->f$0:Lcom/android/server/locksettings/LockSettingsService;

    iput-object p2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Hh44Kcp05cKI6Hc6dJfQupn4QY8;->f$1:Landroid/app/admin/PasswordMetrics;

    iput p3, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Hh44Kcp05cKI6Hc6dJfQupn4QY8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Hh44Kcp05cKI6Hc6dJfQupn4QY8;->f$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Hh44Kcp05cKI6Hc6dJfQupn4QY8;->f$1:Landroid/app/admin/PasswordMetrics;

    iget v2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Hh44Kcp05cKI6Hc6dJfQupn4QY8;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->lambda$notifyActivePasswordMetricsAvailable$0$LockSettingsService(Landroid/app/admin/PasswordMetrics;I)V

    return-void
.end method
