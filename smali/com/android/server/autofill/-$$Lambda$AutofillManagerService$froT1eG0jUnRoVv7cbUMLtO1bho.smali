.class public final synthetic Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$froT1eG0jUnRoVv7cbUMLtO1bho;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/infra/AbstractMasterSystemService$Visitor;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$froT1eG0jUnRoVv7cbUMLtO1bho;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final visit(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$froT1eG0jUnRoVv7cbUMLtO1bho;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v0, p1}, Lcom/android/server/autofill/AutofillManagerService;->lambda$listSessions$3(Ljava/util/ArrayList;Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    return-void
.end method
