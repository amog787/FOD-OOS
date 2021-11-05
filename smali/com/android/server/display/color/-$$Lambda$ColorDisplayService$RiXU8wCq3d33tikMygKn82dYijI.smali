.class public final synthetic Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$RiXU8wCq3d33tikMygKn82dYijI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/color/ColorDisplayService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/color/ColorDisplayService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$RiXU8wCq3d33tikMygKn82dYijI;->f$0:Lcom/android/server/display/color/ColorDisplayService;

    iput p2, p0, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$RiXU8wCq3d33tikMygKn82dYijI;->f$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$RiXU8wCq3d33tikMygKn82dYijI;->f$0:Lcom/android/server/display/color/ColorDisplayService;

    iget v1, p0, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$RiXU8wCq3d33tikMygKn82dYijI;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/color/ColorDisplayService;->lambda$applyTintForColorTone$2$ColorDisplayService(ILandroid/animation/ValueAnimator;)V

    return-void
.end method
