.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$5x6q6c6gSp0no05xKfQpGFp35yQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$5x6q6c6gSp0no05xKfQpGFp35yQ;->f$0:I

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$5x6q6c6gSp0no05xKfQpGFp35yQ;->f$0:I

    check-cast p1, Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$sendStateToClients$7(ILandroid/view/accessibility/IAccessibilityManagerClient;)V

    return-void
.end method
