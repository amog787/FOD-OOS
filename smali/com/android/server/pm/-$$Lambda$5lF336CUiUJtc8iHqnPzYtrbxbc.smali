.class public final synthetic Lcom/android/server/pm/-$$Lambda$5lF336CUiUJtc8iHqnPzYtrbxbc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserTypeDetails$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$5lF336CUiUJtc8iHqnPzYtrbxbc;->f$0:Lcom/android/server/pm/UserTypeDetails$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$5lF336CUiUJtc8iHqnPzYtrbxbc;->f$0:Lcom/android/server/pm/UserTypeDetails$Builder;

    check-cast p1, [I

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    return-void
.end method
