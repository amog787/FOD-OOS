.class public final synthetic Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$1$1-WNu3tTkxodB_LsZ7dGIlvrPN0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/infra/AbstractMasterSystemService$Visitor;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$1$1-WNu3tTkxodB_LsZ7dGIlvrPN0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$1$1-WNu3tTkxodB_LsZ7dGIlvrPN0;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$1$1-WNu3tTkxodB_LsZ7dGIlvrPN0;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$1$1-WNu3tTkxodB_LsZ7dGIlvrPN0;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$1$1-WNu3tTkxodB_LsZ7dGIlvrPN0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/autofill/AutofillManagerService$1;->lambda$onReceive$0(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    return-void
.end method
