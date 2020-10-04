.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$RFkfb_W9wnTTs_gy8Dg3k2uQOYQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final synthetic f$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$RFkfb_W9wnTTs_gy8Dg3k2uQOYQ;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$RFkfb_W9wnTTs_gy8Dg3k2uQOYQ;->f$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$RFkfb_W9wnTTs_gy8Dg3k2uQOYQ;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$RFkfb_W9wnTTs_gy8Dg3k2uQOYQ;->f$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateRelevantEventsLocked$1$AccessibilityManagerService(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method
