.class public final synthetic Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$fqMQSnT1vOGK2_fKsvWHTY9b7SQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/PeopleService$LocalService;

.field public final synthetic f$1:Landroid/content/pm/ParceledListSlice;

.field public final synthetic f$2:Landroid/app/prediction/IPredictionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/PeopleService$LocalService;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$fqMQSnT1vOGK2_fKsvWHTY9b7SQ;->f$0:Lcom/android/server/people/PeopleService$LocalService;

    iput-object p2, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$fqMQSnT1vOGK2_fKsvWHTY9b7SQ;->f$1:Landroid/content/pm/ParceledListSlice;

    iput-object p3, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$fqMQSnT1vOGK2_fKsvWHTY9b7SQ;->f$2:Landroid/app/prediction/IPredictionCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$fqMQSnT1vOGK2_fKsvWHTY9b7SQ;->f$0:Lcom/android/server/people/PeopleService$LocalService;

    iget-object v1, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$fqMQSnT1vOGK2_fKsvWHTY9b7SQ;->f$1:Landroid/content/pm/ParceledListSlice;

    iget-object v2, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$fqMQSnT1vOGK2_fKsvWHTY9b7SQ;->f$2:Landroid/app/prediction/IPredictionCallback;

    check-cast p1, Lcom/android/server/people/SessionInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/people/PeopleService$LocalService;->lambda$sortAppTargets$3$PeopleService$LocalService(Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/people/SessionInfo;)V

    return-void
.end method
