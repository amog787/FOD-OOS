.class Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyRegistryDeathRecipient"
.end annotation


# instance fields
.field private final binder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 478
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;->binder:Landroid/os/IBinder;

    .line 480
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;->this$0:Lcom/android/server/TelephonyRegistry;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;->binder:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/TelephonyRegistry;->access$900(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V

    .line 486
    return-void
.end method
