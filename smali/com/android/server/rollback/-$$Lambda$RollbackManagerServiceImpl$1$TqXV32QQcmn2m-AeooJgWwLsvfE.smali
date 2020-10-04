.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$TqXV32QQcmn2m-AeooJgWwLsvfE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/io/File;

.field private final synthetic f$3:[I

.field private final synthetic f$4:I

.field private final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl$1;ILjava/io/File;[III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$TqXV32QQcmn2m-AeooJgWwLsvfE;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    iput p2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$TqXV32QQcmn2m-AeooJgWwLsvfE;->f$1:I

    iput-object p3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$TqXV32QQcmn2m-AeooJgWwLsvfE;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$TqXV32QQcmn2m-AeooJgWwLsvfE;->f$3:[I

    iput p5, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$TqXV32QQcmn2m-AeooJgWwLsvfE;->f$4:I

    iput p6, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$TqXV32QQcmn2m-AeooJgWwLsvfE;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$TqXV32QQcmn2m-AeooJgWwLsvfE;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    iget v1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$TqXV32QQcmn2m-AeooJgWwLsvfE;->f$1:I

    iget-object v2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$TqXV32QQcmn2m-AeooJgWwLsvfE;->f$2:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$TqXV32QQcmn2m-AeooJgWwLsvfE;->f$3:[I

    iget v4, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$TqXV32QQcmn2m-AeooJgWwLsvfE;->f$4:I

    iget v5, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$TqXV32QQcmn2m-AeooJgWwLsvfE;->f$5:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->lambda$onReceive$0$RollbackManagerServiceImpl$1(ILjava/io/File;[III)V

    return-void
.end method
