.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppTransitionController$z5kCoexPNTWFncmRBfeXr6HA2JA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(ILandroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$z5kCoexPNTWFncmRBfeXr6HA2JA;->f$0:I

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$z5kCoexPNTWFncmRBfeXr6HA2JA;->f$1:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$z5kCoexPNTWFncmRBfeXr6HA2JA;->f$0:I

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$z5kCoexPNTWFncmRBfeXr6HA2JA;->f$1:Landroid/util/ArraySet;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/AppTransitionController;->lambda$findAnimLayoutParamsToken$1(ILandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
