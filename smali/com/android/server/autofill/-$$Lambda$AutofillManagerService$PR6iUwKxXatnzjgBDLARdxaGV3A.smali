.class public final synthetic Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$PR6iUwKxXatnzjgBDLARdxaGV3A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/infra/AbstractMasterSystemService$Visitor;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$PR6iUwKxXatnzjgBDLARdxaGV3A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$PR6iUwKxXatnzjgBDLARdxaGV3A;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$PR6iUwKxXatnzjgBDLARdxaGV3A;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$PR6iUwKxXatnzjgBDLARdxaGV3A;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$PR6iUwKxXatnzjgBDLARdxaGV3A;

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

    invoke-static {p1}, Lcom/android/server/autofill/AutofillManagerService;->lambda$reset$4(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    return-void
.end method
