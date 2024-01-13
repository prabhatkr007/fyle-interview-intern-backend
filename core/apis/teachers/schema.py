from marshmallow import Schema, fields

class TeacherSchema(Schema):
    id = fields.Integer()
    user_id = fields.Integer()
    created_at = fields.DateTime()
    updated_at = fields.DateTime()
