.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$o0LwS4YG_RzBTpouxzUjijvm1sw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/os/RemoteCallback;

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(ZLandroid/os/RemoteCallback;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$o0LwS4YG_RzBTpouxzUjijvm1sw;->f$0:Z

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$o0LwS4YG_RzBTpouxzUjijvm1sw;->f$1:Landroid/os/RemoteCallback;

    iput-object p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$o0LwS4YG_RzBTpouxzUjijvm1sw;->f$2:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$o0LwS4YG_RzBTpouxzUjijvm1sw;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$o0LwS4YG_RzBTpouxzUjijvm1sw;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$o0LwS4YG_RzBTpouxzUjijvm1sw;->f$5:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$o0LwS4YG_RzBTpouxzUjijvm1sw;->f$0:Z

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$o0LwS4YG_RzBTpouxzUjijvm1sw;->f$1:Landroid/os/RemoteCallback;

    iget-object v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$o0LwS4YG_RzBTpouxzUjijvm1sw;->f$2:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$o0LwS4YG_RzBTpouxzUjijvm1sw;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$o0LwS4YG_RzBTpouxzUjijvm1sw;->f$4:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$o0LwS4YG_RzBTpouxzUjijvm1sw;->f$5:I

    move-object v6, p1

    check-cast v6, Ljava/lang/Boolean;

    invoke-static/range {v0 .. v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setPermissionGrantState$81(ZLandroid/os/RemoteCallback;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V

    return-void
.end method
