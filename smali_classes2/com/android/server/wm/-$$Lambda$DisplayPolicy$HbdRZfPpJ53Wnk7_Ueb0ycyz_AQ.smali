.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/util/Pair;

.field public final synthetic f$4:I

.field public final synthetic f$5:[Lcom/android/internal/view/AppearanceRegion;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy;ILjava/lang/String;Landroid/util/Pair;I[Lcom/android/internal/view/AppearanceRegion;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$3:Landroid/util/Pair;

    iput p5, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$4:I

    iput-object p6, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$5:[Lcom/android/internal/view/AppearanceRegion;

    iput-boolean p7, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$6:Z

    iput-boolean p8, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$7:Z

    iput-boolean p9, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$8:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$3:Landroid/util/Pair;

    iget v4, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$4:I

    iget-object v5, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$5:[Lcom/android/internal/view/AppearanceRegion;

    iget-boolean v6, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$6:Z

    iget-boolean v7, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$7:Z

    iget-boolean v8, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;->f$8:Z

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/DisplayPolicy;->lambda$updateSystemUiVisibilityLw$14$DisplayPolicy(ILjava/lang/String;Landroid/util/Pair;I[Lcom/android/internal/view/AppearanceRegion;ZZZ)V

    return-void
.end method
