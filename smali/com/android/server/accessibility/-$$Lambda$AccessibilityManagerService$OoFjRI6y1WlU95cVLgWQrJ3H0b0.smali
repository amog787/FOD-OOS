.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$OoFjRI6y1WlU95cVLgWQrJ3H0b0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final synthetic f$1:Lcom/android/server/accessibility/AccessibilityUserState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$OoFjRI6y1WlU95cVLgWQrJ3H0b0;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$OoFjRI6y1WlU95cVLgWQrJ3H0b0;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$OoFjRI6y1WlU95cVLgWQrJ3H0b0;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$OoFjRI6y1WlU95cVLgWQrJ3H0b0;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateRelevantEventsLocked$3$AccessibilityManagerService(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method
