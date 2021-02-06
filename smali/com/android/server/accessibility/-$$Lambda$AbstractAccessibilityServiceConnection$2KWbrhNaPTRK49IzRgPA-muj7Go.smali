.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AbstractAccessibilityServiceConnection$2KWbrhNaPTRK49IzRgPA-muj7Go;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/-$$Lambda$AbstractAccessibilityServiceConnection$2KWbrhNaPTRK49IzRgPA-muj7Go;->f$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iput p2, p0, Lcom/android/server/accessibility/-$$Lambda$AbstractAccessibilityServiceConnection$2KWbrhNaPTRK49IzRgPA-muj7Go;->f$1:I

    iput-object p3, p0, Lcom/android/server/accessibility/-$$Lambda$AbstractAccessibilityServiceConnection$2KWbrhNaPTRK49IzRgPA-muj7Go;->f$2:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/-$$Lambda$AbstractAccessibilityServiceConnection$2KWbrhNaPTRK49IzRgPA-muj7Go;->f$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget v1, p0, Lcom/android/server/accessibility/-$$Lambda$AbstractAccessibilityServiceConnection$2KWbrhNaPTRK49IzRgPA-muj7Go;->f$1:I

    iget-object v2, p0, Lcom/android/server/accessibility/-$$Lambda$AbstractAccessibilityServiceConnection$2KWbrhNaPTRK49IzRgPA-muj7Go;->f$2:Landroid/os/RemoteCallback;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->lambda$takeScreenshot$0$AbstractAccessibilityServiceConnection(ILandroid/os/RemoteCallback;Ljava/lang/Object;)V

    return-void
.end method
