.class public final synthetic Lcom/android/server/people/prediction/-$$Lambda$AppTargetPredictor$AoCSjvx8UmO2ru-6I2SrqntXIec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/prediction/AppTargetPredictor;

.field public final synthetic f$1:Landroid/app/prediction/AppTargetEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/prediction/AppTargetPredictor;Landroid/app/prediction/AppTargetEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/prediction/-$$Lambda$AppTargetPredictor$AoCSjvx8UmO2ru-6I2SrqntXIec;->f$0:Lcom/android/server/people/prediction/AppTargetPredictor;

    iput-object p2, p0, Lcom/android/server/people/prediction/-$$Lambda$AppTargetPredictor$AoCSjvx8UmO2ru-6I2SrqntXIec;->f$1:Landroid/app/prediction/AppTargetEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/prediction/-$$Lambda$AppTargetPredictor$AoCSjvx8UmO2ru-6I2SrqntXIec;->f$0:Lcom/android/server/people/prediction/AppTargetPredictor;

    iget-object v1, p0, Lcom/android/server/people/prediction/-$$Lambda$AppTargetPredictor$AoCSjvx8UmO2ru-6I2SrqntXIec;->f$1:Landroid/app/prediction/AppTargetEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/people/prediction/AppTargetPredictor;->lambda$onAppTargetEvent$0$AppTargetPredictor(Landroid/app/prediction/AppTargetEvent;)V

    return-void
.end method
