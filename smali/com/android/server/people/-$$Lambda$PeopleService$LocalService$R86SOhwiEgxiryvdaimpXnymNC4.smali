.class public final synthetic Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$R86SOhwiEgxiryvdaimpXnymNC4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/PeopleService$LocalService;

.field public final synthetic f$1:Landroid/app/prediction/IPredictionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/PeopleService$LocalService;Landroid/app/prediction/IPredictionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$R86SOhwiEgxiryvdaimpXnymNC4;->f$0:Lcom/android/server/people/PeopleService$LocalService;

    iput-object p2, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$R86SOhwiEgxiryvdaimpXnymNC4;->f$1:Landroid/app/prediction/IPredictionCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$R86SOhwiEgxiryvdaimpXnymNC4;->f$0:Lcom/android/server/people/PeopleService$LocalService;

    iget-object v1, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$R86SOhwiEgxiryvdaimpXnymNC4;->f$1:Landroid/app/prediction/IPredictionCallback;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/people/PeopleService$LocalService;->lambda$sortAppTargets$2$PeopleService$LocalService(Landroid/app/prediction/IPredictionCallback;Ljava/util/List;)V

    return-void
.end method
