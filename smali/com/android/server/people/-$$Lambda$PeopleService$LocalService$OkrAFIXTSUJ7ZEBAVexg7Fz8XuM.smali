.class public final synthetic Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$OkrAFIXTSUJ7ZEBAVexg7Fz8XuM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/prediction/IPredictionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/IPredictionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$OkrAFIXTSUJ7ZEBAVexg7Fz8XuM;->f$0:Landroid/app/prediction/IPredictionCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$OkrAFIXTSUJ7ZEBAVexg7Fz8XuM;->f$0:Landroid/app/prediction/IPredictionCallback;

    check-cast p1, Lcom/android/server/people/SessionInfo;

    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService$LocalService;->lambda$registerPredictionUpdates$4(Landroid/app/prediction/IPredictionCallback;Lcom/android/server/people/SessionInfo;)V

    return-void
.end method
