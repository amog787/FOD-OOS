.class public final synthetic Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$cmUgPk-YO6by7_XySWglEKwZh3E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/PeopleService$LocalService;

.field public final synthetic f$1:Landroid/app/prediction/AppPredictionSessionId;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/PeopleService$LocalService;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$cmUgPk-YO6by7_XySWglEKwZh3E;->f$0:Lcom/android/server/people/PeopleService$LocalService;

    iput-object p2, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$cmUgPk-YO6by7_XySWglEKwZh3E;->f$1:Landroid/app/prediction/AppPredictionSessionId;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$cmUgPk-YO6by7_XySWglEKwZh3E;->f$0:Lcom/android/server/people/PeopleService$LocalService;

    iget-object v1, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$cmUgPk-YO6by7_XySWglEKwZh3E;->f$1:Landroid/app/prediction/AppPredictionSessionId;

    check-cast p1, Lcom/android/server/people/SessionInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/people/PeopleService$LocalService;->lambda$onDestroyPredictionSession$7$PeopleService$LocalService(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/people/SessionInfo;)V

    return-void
.end method
