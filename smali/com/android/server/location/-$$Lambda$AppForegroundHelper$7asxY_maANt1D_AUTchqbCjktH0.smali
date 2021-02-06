.class public final synthetic Lcom/android/server/location/-$$Lambda$AppForegroundHelper$7asxY_maANt1D_AUTchqbCjktH0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/AppForegroundHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/AppForegroundHelper;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$AppForegroundHelper$7asxY_maANt1D_AUTchqbCjktH0;->f$0:Lcom/android/server/location/AppForegroundHelper;

    iput p2, p0, Lcom/android/server/location/-$$Lambda$AppForegroundHelper$7asxY_maANt1D_AUTchqbCjktH0;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/location/-$$Lambda$AppForegroundHelper$7asxY_maANt1D_AUTchqbCjktH0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$AppForegroundHelper$7asxY_maANt1D_AUTchqbCjktH0;->f$0:Lcom/android/server/location/AppForegroundHelper;

    iget v1, p0, Lcom/android/server/location/-$$Lambda$AppForegroundHelper$7asxY_maANt1D_AUTchqbCjktH0;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/location/-$$Lambda$AppForegroundHelper$7asxY_maANt1D_AUTchqbCjktH0;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/AppForegroundHelper;->lambda$onAppForegroundChanged$0$AppForegroundHelper(IZ)V

    return-void
.end method
