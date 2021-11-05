.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AbstractAccessibilityServiceConnection$g9riCCZ1Q65sgTLJyka5Kl5oFso;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/accessibility/-$$Lambda$AbstractAccessibilityServiceConnection$g9riCCZ1Q65sgTLJyka5Kl5oFso;->f$0:I

    iput-object p2, p0, Lcom/android/server/accessibility/-$$Lambda$AbstractAccessibilityServiceConnection$g9riCCZ1Q65sgTLJyka5Kl5oFso;->f$1:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/-$$Lambda$AbstractAccessibilityServiceConnection$g9riCCZ1Q65sgTLJyka5Kl5oFso;->f$0:I

    iget-object v1, p0, Lcom/android/server/accessibility/-$$Lambda$AbstractAccessibilityServiceConnection$g9riCCZ1Q65sgTLJyka5Kl5oFso;->f$1:Landroid/os/RemoteCallback;

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->lambda$sendScreenshotFailure$1(ILandroid/os/RemoteCallback;Ljava/lang/Object;)V

    return-void
.end method
